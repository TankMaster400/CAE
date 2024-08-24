function WZ_CAE_6_1
% function's help description

    h = []; 
    h.v = 0;
    h.r = 1;
    h.a1 = axes('Position',[0.08,0.09,0.88,0.44]); 

    h.text_polynomial = uicontrol('Style','Edit','String','','Units','normalized','Position',[0.05,0.8,0.25,0.08]);
    uicontrol('Style','text','String','Polynomial','HorizontalAlignment','center','BackgroundColor','y','Units','normalized','Position',[0.05,0.9,0.25,0.08]);
    h.text_Vmin = uicontrol('Style','Edit','String','','Units','normalized','Position',[0.05,0.6,0.1,0.08]);
    uicontrol('Style','text','String','Vmin','HorizontalAlignment','center','BackgroundColor','y','Units','normalized','Position',[0.05,0.7,0.1,0.08]);
    h.text_Vmax = uicontrol('Style','Edit','String','','Units','normalized','Position',[0.2,0.6,0.1,0.08]);
    uicontrol('Style','text','String','Vmax','HorizontalAlignment','center','BackgroundColor','y','Units','normalized','Position',[0.2,0.7,0.1,0.08]); 
    
    bg = uibuttongroup('Units','normalized','Position',[0.31,0.68,0.27,0.32]);
    
    r1 = uicontrol(bg,'Style','radiobutton','Units','normalized','Position',[0.08,0.0,0.25,0.25]); 
    r2 = uicontrol(bg,'Style','radiobutton','Units','normalized','Position',[0.08,0.25,0.25,0.25]); 
    r3 = uicontrol(bg,'Style','radiobutton','Units','normalized','Position',[0.08,0.5,0.25,0.25]); 
    r4 = uicontrol(bg,'Style','radiobutton','Units','normalized','Position',[0.08,0.75,0.25,0.25]); 
       
   uicontrol('Style','text','String','Linear','HorizontalAlignment','center','Units','normalized','BackgroundColor','y','Position',[0.37,0.93,0.2,0.06]);
   uicontrol('Style','text','String','Logarythmic','HorizontalAlignment','center','Units','normalized','BackgroundColor','y','Position',[0.37,0.85,0.2,0.06]);
   uicontrol('Style','text','String','SemiLogarythmicX','HorizontalAlignment','center','Units','normalized','BackgroundColor','y','Position',[0.37,0.77,0.2,0.06]);
   uicontrol('Style','text','String','SemiLogarythmicY','HorizontalAlignment','center','Units','normalized','BackgroundColor','y','Position',[0.37,0.69,0.2,0.06]);
   h.grid = uicontrol('Style','pushbutton','String','GRID (ON/OFF)','HorizontalAlignment','center','Units','normalized','BackgroundColor','g','Position',[0.37,0.6,0.2,0.08],'Callback',{@ploting,5});

   uicontrol('Style','text','String','Derivative order','HorizontalAlignment','center','Units','normalized','BackgroundColor','y','Position',[0.58,0.9,0.2,0.08]);
   text_DO = uicontrol('Style','Edit','String','','Units','normalized','Position',[0.58,0.8,0.2,0.08],'Callback','h.mini=str2num(get(gco,''String''));');

   uicontrol('Style','pushbutton','String','Calculate Derivative','HorizontalAlignment','center','Units','normalized','BackgroundColor','g','Position',[0.79,0.9,0.2,0.08]);
   uicontrol('Style','text','String','','HorizontalAlignment','center','Units','normalized','BackgroundColor','y','Position',[0.79,0.8,0.2,0.08]);

   uicontrol('Style','text','String','Wojciech Zub','Units','normalized','HorizontalAlignment','center','Units','normalized','BackgroundColor','y','Position',[0.58,0.7,0.41,0.08]);
   uicontrol('Style','pushbutton','String','HELP','HorizontalAlignment','center','Units','normalized','BackgroundColor','g','Position',[0.58,0.6,0.41,0.08]);  
  
    
    function ploting(~,~,Size_of_Markers) 
        V.P=str2num(get(h.text_polynomial,'String'));
        V.mini=str2double(get(h.text_Vmin,'String'));
        V.maxi=str2double(get(h.text_Vmax,'String'));

         %if h.r == 1
           plot(V.mini:V.maxi,polyval(V.P,V.mini:V.maxi));
         % elseif h.r == 2
         %    loglog(V.mini:V.maxi,polyval(V.P,V.mini:V.maxi));
         % elseif h.r3 == 3
         %    semilogx(V.mini:V.maxi,polyval(V.P,V.mini:V.maxi));
         % elseif h.r4 == 1
         %    semilogy(V.mini:V.maxi,polyval(V.P,V.mini:V.maxi));
         % end

     
        title('Diagram of polyval');
        xlabel('X value');
        ylabel('Y value');
        % Size_of_Markers = 5;
        ploting2(Size_of_Markers);
    end
    function ploting2(Mark_size)
        if h.v == 0
        h.v = 1;
        axes(gca);
        grid on;
        Line_handler=get(gca,'Children');
        set(Line_handler,'Marker','square','MarkerSize',Mark_size);
        else
        h.v = 0;
        grid off
        end
    end

end